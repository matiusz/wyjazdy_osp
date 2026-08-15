// Rejestracja Service Workera
if ('serviceWorker' in navigator) {
    window.addEventListener('load', () => {
        navigator.serviceWorker.register('sw.js')
            .catch(err => console.error('Błąd rejestracji Service Workera:', err));
    });
}

// ŁADOWANIE LISTY OSÓB Z PLIKU JSON
document.addEventListener('DOMContentLoaded', async () => {
    const peopleListDiv = document.getElementById('peopleList');
    const driversListDiv = document.getElementById('driversList');
    const leadersListDiv = document.getElementById('leadersList');
    
    try {
        const response = await fetch('http://localhost:5000/people');
        if (!response.ok) throw new Error('Błąd pobierania pliku');
        const people = await response.json();
        
        // Czyszczenie komunikatu "Ładowanie..."
        peopleListDiv.innerHTML = ''; 
        driversListDiv.innerHTML = ''; 
        leadersListDiv.innerHTML = ''; 
        
        // Generowanie checkboxów
        people.forEach(person => {
            const label = document.createElement('label');
            label.className = 'checkbox-item';
            
            const checkbox = document.createElement('input');
            checkbox.type = 'checkbox';
            checkbox.name = 'personCheckbox';
            checkbox.value = person[0];
            
            label.appendChild(checkbox);
            label.appendChild(document.createTextNode(person[0]));
            
            peopleListDiv.appendChild(label);

            if(person[1]=="B"){
                const label = document.createElement('label');
                label.className = 'radio-item';
                
                const radio = document.createElement('input');
                radio.type = 'radio';
                radio.name = 'driversRadio';
                radio.value = person[0];
                
                label.appendChild(radio);
                label.appendChild(document.createTextNode(person[0]));
                
                driversListDiv.appendChild(label);
            }
            if(person[2]=="dowodca"){
                const label = document.createElement('label');
                label.className = 'radio-item';
                
                const radio = document.createElement('input');
                radio.type = 'radio';
                radio.name = 'leadersRadio';
                radio.value = person[0];
                
                label.appendChild(radio);
                label.appendChild(document.createTextNode(person[0]));
                
                leadersListDiv.appendChild(label);
            }
        });
    } catch (error) {
        peopleListDiv.innerHTML = '<p style="color:red; text-align:center;">Błąd ładowania listy osób.</p>';
        console.error(error);
    }

    const carsListDiv = document.getElementById('carsList');

    try {
        const response = await fetch('http://localhost:5000/cars');
        if (!response.ok) throw new Error('Błąd pobierania pliku');
        const cars = await response.json();
        
        /// Czyszczenie komunikatu "Ładowanie..."
        carsListDiv.innerHTML = ''; 
        


        // Generowanie przycisków radio
        cars.forEach(car => {
            const label = document.createElement('label');
            label.className = 'radio-item';
            
            const radio = document.createElement('input');
            radio.type = 'radio';
            radio.name = 'carsRadio'; // Ta sama nazwa dla wszystkich gwarantuje jednokrotny wybór
            radio.value = car;
            
            label.appendChild(radio);
            label.appendChild(document.createTextNode(car));
            
            carsListDiv.appendChild(label);
        });
    } catch (error) {
        console.error(error);
        carsListDiv.innerHTML = '<p style="color:red; text-align:center;">Błąd ładowania listy samochodów.</p>';
    }
});

// WYSYŁANIE FORMULARZA
document.getElementById('eventForm').addEventListener('submit', async (e) => {
    e.preventDefault();

    // Pobieranie zaznaczonych osób
    const selectedCheckboxes = document.querySelectorAll('input[name="personCheckbox"]:checked');
    const selectedPeople = Array.from(selectedCheckboxes).map(cb => cb.value);

    // Walidacja: upewnij się, że wybrano chociaż jedną osobę
    if (selectedPeople.length === 0) {
        alert("Proszę zaznaczyć przynajmniej jedną osobę z listy!");
        return;
    }
    // Pobieranie zaznaczonego pojazdu
    const selectedRadio = document.querySelector('input[name="carsRadio"]:checked');

    // Walidacja: upewnij się, że kogoś wybrano
    if (!selectedRadio) {
        alert("Proszę wybrać pojazd z listy!");
        return;
    }
    // Tworzenie obiektu danych
    const eventData = {
        car: selectedRadio.value,
        timeStart: document.getElementById('eventTimeStart').value,
        timeEnd: document.getElementById('eventTimeEnd').value,
        people: selectedPeople, // Teraz to jest ładna tablica zaznaczonych osób
        activities: document.getElementById('activities').value,
        submittedAt: new Date().toISOString()
    };

    const statusEl = document.getElementById('statusMessage');
    statusEl.textContent = "Wysyłanie...";
    statusEl.className = "";
    statusEl.style.display = "block";

    try {
        // Zmień ten URL na adres Twojego prawdziwego serwera / API
        const response = await fetch('https://twoj-serwer.pl/api/raporty', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(eventData)
        });

        if (response.ok) {
            statusEl.textContent = "Raport został pomyślnie wysłany!";
            statusEl.className = "success";
            
            // Czyszczenie formularza i odznaczanie checkboxów
            document.getElementById('eventForm').reset();
            
            setTimeout(() => statusEl.style.display = "none", 3000);
        } else {
            throw new Error('Błąd serwera');
        }
    } catch (error) {
        statusEl.textContent = "Błąd wysyłania. Sprawdź połączenie z internetem.";
        statusEl.className = "error";
    }
});