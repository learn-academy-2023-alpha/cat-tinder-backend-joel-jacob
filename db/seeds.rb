celebrities = [
   
{name: 'Simone Ashley',
   age: 27,
   stared_in: 'Bridgerton',
   image:'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.today.com%2Fpopculture%2Ftv%2Fbridgerton-season-2-simone-ashley-interview-rcna21469&psig=AOvVaw1LFPGsx-uBr-L7yzMx9Ix2&ust=1680644770460000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCPjjg-bXjv4CFQAAAAAdAAAAABAE'
},  
 {name: 'Regé-Jean Page',
age: 34,
stared_in: 'Bridgerton',
image:'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.glamour.com%2Fstory%2Frege-jean-page-leaving-bridgerton-ok&psig=AOvVaw2ElpGua5ilaQQzR7787uAX&ust=1680644900143000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCJig56PYjv4CFQAAAAAdAAAAABAE'
},
{name: 'Phoebe Dynevor',
age: 27,
stared_in: 'Bridgerton',
image:'https://www.google.com/imgres?imgurl=https%3A%2F%2Fmedia.glamourmagazine.co.uk%2Fphotos%2F6214cccbfe8810be31c6cb32%2F4%3A3%2Fw_1920%2Ch_1440%2Cc_limit%2FPHOEBE%2520DYNEVOUR%2520220222%2520%2520%2520Shot_01_043_SQ.jpg&tbnid=SI2ajTGqqydJjM&vet=12ahUKEwj97ajW2I7-AhWBj4kEHX0PBHgQMygOegUIARCGAg..i&imgrefurl=https%3A%2F%2Fwww.glamourmagazine.co.uk%2Farticle%2Fphoebe-dynevor-beauty-memo-interview-2022&docid=9z26H5oK8iIkCM&w=1920&h=1440&q=Phoebe%20Dynevor&hl=en&ved=2ahUKEwj97ajW2I7-AhWBj4kEHX0PBHgQMygOegUIARCGAg'
},
{name: 'Luke Newton',
age: 30,
stared_in: 'Bridgerton',
image:'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.independent.co.uk%2Farts-entertainment%2Ftv%2Ffeatures%2Fluke-newton-interview-bridgerton-season-2-b2037973.html&psig=AOvVaw0S-DtIW1tehqjB1_dA8KFm&ust=1680645077806000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCNiX0PjYjv4CFQAAAAAdAAAAABAE'
}
]
celebrities.each do |celebrity|
    Celebrity.create celebrity  
    puts "creating cast #{celebrity}"
end