// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

import "trix"
import "@rails/actiontext"

import "popper"
import "bootstrap"

if(document.querySelector('.remove_fields')){
  document.querySelectorAll('.remove_fields').forEach(function(link){
    link.onclick = function(e){
      let fs = link.closest('fieldset')
      fs.querySelector("[type='hidden']").value = true
      fs.hidden = true
      e.preventDefault()
    }
  })
}

if(document.querySelector('.remove_choice_fields')){
  document.querySelectorAll('.remove_choice_fields').forEach(function(link){
    link.onclick = function(e){
      let fs = link.closest('fieldset')
      fs.querySelector("[type='hidden']").value = true
      fs.hidden = true
      e.preventDefault()
    }
  })
}

let add_btn = document.querySelector('.add_choice_btn')
if (add_btn){
  let div = add_btn.closest('.choices')
  if(div){
    let all_fs = div.querySelectorAll('fieldset')
    let n = all_fs.length - 1
    let next_n = n + 1
    let fs = all_fs[n]
    fs.remove()
    if(fs){
      add_btn.onclick = (e) => {
        let new_fs = document.createElement('fieldset')
        new_fs.classList.add('border', 'm-3', 'p-3')
        new_fs.innerHTML = fs.innerHTML.replaceAll(
          '_attributes][' + n + '][', '_attributes][' + next_n+ '][').replaceAll(
          '_attributes_' + n + '_', '_attributes_' + next_n + '_'
        )
        div.appendChoice(new_fs)

        let cancel_btn = new_fs.querySelector('.cancel_choice_fields')
        if(cancel_btn){
          cancel_btn.onclick = function(e){
            let fs = cancel_btn.closest('fieldset')
            fs.remove()
            e.preventDefault()
          }
        }

        next_n += 1
      }
    }
  }
}