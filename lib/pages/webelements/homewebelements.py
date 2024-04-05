from selenium.webdriver.common.by import By


class HomeWebElements:
    where_label = (By.CSS_SELECTOR, '.primary-content h2')
    signin_button = (
        By.CSS_SELECTOR, '.menu__wrapper .menu-label__wrapper button')
    search_button = (
        By.CSS_SELECTOR, '.pageContent .SearchPage__FrontDoor .HPw7-form-fields-and-submit .HPw7-submit button')

    login_button = (
        By.CSS_SELECTOR, '.menu-label__wrapper')

    origin_input = (
        # TODO -> Por mejorar: obtener el input independiente del idioma.
        By.CSS_SELECTOR, 'input.k_my-input[aria-label="Campo de origem"]')

    destiny_input = (
        # TODO -> Por mejorar: obtener el input independiente del idioma.
        By.XPATH, '//input[@placeholder="Destino"]')

    date_input = (
        By.XPATH, '//span[@aria-label]')

    search_travel_button = (
        # TODO -> Por mejorar: obtener el input independiente del idioma.
        By.XPATH, '//button[@aria-label="Buscar"]')

    voos = (
        By.XPATH, '//div[@class="dJtn-menu-item-title" and text()="Voos"]')

    hospedagens = (
        By.XPATH, '//div[@class="dJtn-menu-item-title" and text()="Hospedagens"]')

    carros = (By.XPATH,
              '//div[@class="dJtn-menu-item-title" and text()="Carros"]')

    pacotes = (By.XPATH,
               '//div[@class="dJtn-menu-item-title" and text()="Pacotes"]')
