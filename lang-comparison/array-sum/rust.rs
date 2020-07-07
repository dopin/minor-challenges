fn main() {
    println!("{}", (1..).take(9).sum::<i32>());
    println!("{}", (1..).take(9).fold(0, |acc, x| acc + x));
}
