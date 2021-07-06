const db = require("../data/config");

function find() {
  return db.select("*").from("schemes");
}
function findById(id) {
  return db("schemes as s").where("s.id", id).first();
}
function findSteps(id) {
  return db("schemes as s")
    .where("s.id", id)
    .join("steps as st")
    .where("st.scheme_id", id);
}

function add(scheme) {
  return db("schemes").insert(scheme);
}

function update(schemes, id) {
  return db("schemes").where({ id }).update(schemes);
}

function remove(id) {
  return db("schemes").where({ id }).del();
}

module.exports = {
  find,
  findById,
  findSteps,
  add,
  update,
  remove,
};
