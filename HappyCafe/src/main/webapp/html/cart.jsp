<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Shopping List</title>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Yeon+Sung&display=swap"
      rel="stylesheet"
    />
    <script
      src="https://kit.fontawesome.com/42764c1962.js"
      crossorigin="anonymous"
    ></script>
    <link rel="stylesheet" href="cart.css" />
    <script src="cart.js" defer></script>
  </head>

  <body>
    <img class="receipt_top" src="./images/receipt.svg" alt="receipt image" />
    <!-- Main Content -->
    <section class="main">
      <!-- Title -->
      <div class="title">Shopping List</div>
      <!-- Add Items -->

      <i class="add_button fas fa-plus-circle"></i>
      <div class="add">
        <input type="text" class="add_input input_name" placeholder="name" />
        /
        <input
          type="number"
          class="add_input input_price"
          placeholder="expected price"
        />
      </div>

      <!-- Item List -->
      <ul class="item-list">
        <!--
          stop this because of unknown error
        <button class="delete-checked-btn">Delete Checked</button>
        -->
      </ul>

      <!-- Summary -->
      <div class="horizontal-line"></div>
      <div class="sum">
        <div class="sum_item">
          <div>Checked:</div>
          <div class="sum_checked-price">0 $</div>
        </div>

        <div class="sum_item">
          <div>Unchecked:</div>
          <div class="sum_unchecked-price">0 $</div>
        </div>

        <div class="sum_item">
          <div>Total:</div>
          <div class="sum_total-price">0 $</div>
        </div>
      </div>
    </section>
    <img
      class="receipt_bottom"
      src="./images/receipt.svg"
      alt="receipt image"
    />
  </body>
</html>