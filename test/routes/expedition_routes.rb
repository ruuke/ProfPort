class ExpeditionRoutes <ActionDispatch::IntegrationTest
  test 'should recognizes show toute' do
    assert_recognizes({ controller: 'expeditions', action: 'show', id: 1 }, { path: '/expeditions/1', method: :get })
  end
end