describe("Product Details", () => {
  beforeEach(() => {
    cy.visit("/");
  });
  
    it("cx can click on the product to see the product details", () => {
      cy.get(".products article").first().click();
      cy.get(".product-detail").should("include.text", "The Scented Blade is an extremely rare, tall plant and can be found mostly in savannas. It blooms once a year, for 2 weeks.")
    });

    it("cx can click on the second product and see the product details", () => {
      cy.get(".products article").last().click();
      cy.get(".product-detail").should("exist")
    })

})