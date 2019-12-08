pub mod client;
pub mod server;

#[derive(Debug, Clone)]
pub enum Msg {
    Client(client::Msg),
    Server(server::Msg),
}
