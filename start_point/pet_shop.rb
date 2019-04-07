def pet_shop_name(shop_name)
  return shop_name[:name]
end

def total_cash(money)
  return money[:admin][:total_cash]
end

def add_or_remove_cash(money, cash_to_add)
  # = money[:admin][:total_cash]
  #cash = cash_to_add
  return money[:admin][:total_cash] += cash_to_add
end

def pets_sold(sold)
  return sold[:admin][:pets_sold]
end

def increase_pets_sold(sold, pet_sold)
  return sold[:admin][:pets_sold] += pet_sold
end

def stock_count(count)
  return count[:pets].count
end

def pets_by_breed(pet_shop, pet_to_find)
  pet_breed = []

  pet_shops_pets = pet_shop[:pets]

  for pet in pet_shops_pets
    if pet_to_find == pet[:breed]
      pet_breed.push(pet)
    end
  end

  return pet_breed
end

def find_pet_by_name(pet_shop, pet_to_find)
  #pet_name = {}

  pet_shops_pets = pet_shop[:pets]

  for pet in pet_shops_pets
    if pet[:name] == pet_to_find
      #pet_name = pet_to_find
      #pet_name.to_s(pet)
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, pet_to_remove)
  # access @pet_shop hash, then pets array, remove from pets array hash which includes :name of pet_to_remove

  pet_shops_pets = pet_shop[:pets]
  for pet in pet_shops_pets
    if pet[:name] == pet_to_remove
      pet_shops_pets.delete(pet)
    end
  end
  return nil
end

def add_pet_to_stock(pet_shop, pet_to_add)
  # take @new_pet hash and insert it into pets array inside pet_shop hash
  # count elements in pets array and return count as an integer
  pet_shops_pets = pet_shop[:pets]
  pet_shop[:pets] << pet_to_add
  #p pet_shop[:pets]
end

def customer_cash(cash)
  # in customers array confirm that the hash that contains Alice has cash 1000
  return @customers[0][:cash]
end

def remove_customer_cash(customer, cash)
  #access customers array, access first customer hash and -= 100 from their cash
  return customer[:cash] -= cash
end

def customer_pet_count(count)
  #customer at point [0] in array currently has 0 pets
  return count[:pets].count
end

def add_pet_to_customer(customer, pet_to_add)
  #for customer at point 0 in array of customers, enter their hash and add @new_pet into their pets array
  #return count of customer's pet array
  customer_pets = customer[:pets]
  customer[:pets] << pet_to_add
end

def customer_can_afford_pet(customer, can_buy_pet)
  #access customer array, enter their hash and find cash.
  #access @new_pet hash and and find price
  #if customer cash >= pet price return true else return false
  return customer[:cash] >= can_buy_pet[:price]
end
