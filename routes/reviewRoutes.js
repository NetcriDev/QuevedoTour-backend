const ReviewController = require('../controllers/reviewController');

module.exports = (app, upload, passport) => {

    // Fetch reviews for an establishment (Public)
    app.get('/api/reviews/findByEstablishment/:id_establishment', ReviewController.findByEstablishment);

    // Create a new review (Protected)
    app.post('/api/reviews/create', passport.authenticate('jwt', { session: false }), upload.array('image', 5), ReviewController.create);

    // Delete a review (Protected)
    app.delete('/api/reviews/delete', passport.authenticate('jwt', { session: false }), ReviewController.delete);

}
