'use strict';

const main = document.querySelector('.main');

const input_name = document.querySelector('.input_name');
const input_price = document.querySelector('.input_price');
const itemList = document.querySelector('.item-list');
let checkedPrice = new Number(0);
let uncheckedPrice = new Number(0);

const addBtn = document.querySelector('.add_button');
addBtn.addEventListener('click', () => {
  onClickAddBtn();
});

itemList.addEventListener('click', (e) => {
  if (
    e.target.classList.contains('item_name') ||
    e.target.classList.contains('item_price')
  ) {
    onClickItem(e);
  } else if (e.target.classList.contains('item_delete-button')) {
    onClickItemDelete(e);
  }
});

const addContainer = document.querySelector('.add');
addContainer.addEventListener('keyup', (e) => {
  if (
    e.target.classList.contains('input_name') ||
    e.target.classList.contains('input_price')
  ) {
    if (e.key === 'Enter') {
      onClickAddBtn();
      focus();
    } else if (
      e.key === 'ArrowRight' &&
      e.target.classList.contains('input_name')
    ) {
      input_price.focus();
    } else if (
      e.key === 'ArrowLeft' &&
      e.target.classList.contains('input_price')
    ) {
      input_name.focus();
    }
  }
});

// handle add event when add button is clicked
function onClickAddBtn() {
  const itemName = input_name.value;
  let itemPrice = parseInt(input_price.value);
  if (itemName == '') {
    alert('Please enter the item name.');
    return;
  }
  if (isNaN(itemPrice)) {
    itemPrice = new Number(0);
  }

  const item = document.createElement('li');
  item.setAttribute('class', 'item');
  item.setAttribute('data-price', `${itemPrice}`);
  item.innerHTML = `
          <div class="item_name">${itemName}</div>
          <div class="item_price">${itemPrice} $</div>
          <i class="item_delete-button far fa-trash-alt"></i>
  `;
  itemList.appendChild(item);
  input_name.value = '';
  input_price.value = '';

  uncheckedPrice += itemPrice;
  updateSummary();
}

// handle toggling item when item is clicked and delete item when delete button is clicked
function onClickItem(event) {
  const currPrice = parseInt(event.target.parentNode.dataset.price);
  if (event.target.parentNode.classList.contains('checked')) {
    event.target.parentNode.classList.remove('checked');
    uncheckedPrice += currPrice;
    checkedPrice -= currPrice;
  } else {
    event.target.parentNode.classList.add('checked');
    checkedPrice += currPrice;
    uncheckedPrice -= currPrice;
  }

  updateSummary();
}

function onClickItemDelete(event) {
  const currPrice = parseInt(event.target.parentNode.dataset.price);
  event.target.parentNode.remove();
  if (event.target.parentNode.classList.contains('checked')) {
    checkedPrice -= currPrice;
  } else {
    uncheckedPrice -= currPrice;
  }
  updateSummary();
}

/*
// stop this function because of unknow bug
// handle delete checked item button

const deleteCheckedBtn = document.querySelector('.delete_checked-btn');
deleteCheckedBtn.addEventListner('click', () =>{
  onClickDeleteAllBtn();
});

const items = document.querySelectorAll('.item');
function onClickDelteAllBtn(){
items.forEach((item) => {
    if (item.classList.contains('checked')) item.remove();
  });
  uncheckedPrice = new Number(0);
  updateSummary();
}
 */

// update sum when item is added / deleted / checked / unchecked
const sumChecked = document.querySelector('.sum_checked-price');
const sumUnchecked = document.querySelector('.sum_unchecked-price');
const sumTotal = document.querySelector('.sum_total-price');
function updateSummary() {
  sumChecked.textContent = `${checkedPrice} $`;
  sumUnchecked.textContent = `${uncheckedPrice} $`;
  sumTotal.textContent = `${checkedPrice + uncheckedPrice} $`;
}