import static org.junit.Assert.*;

import org.junit.jupiter.api.Test;

class CalculatorTest {

	@Test
	void testSum() {
		double result = 0;
		result = Calculator.sum(4, 5);
		assertTrue("The result should be 9.", (result == 9));
	}

	@Test
	void testSubtract() {
		double result = 0;
		result = Calculator.subtract(4, 5);
		assertTrue("The result should be 1.", (result == 1));
	}

	@Test
	void testMultiply() {
		double result = 0;
		result = Calculator.multiply(4, 5);
		assertTrue("The result should be 20.", (result == 20));
	}

	@Test
	void testDivide() {
		double result = 0;
		result = Calculator.divide(15, 3);
		assertTrue("The result should be 5.", (result == 5));
	}

	@Test
	void testCeil() {
		double result = 0;
		result = Calculator.ceil(3.6);
		assertTrue("The result should be 4.", (result == 4));
	}

	@Test
	void testFloor() {
		double result = 0;
		result = Calculator.floor(3.6);
		assertTrue("The result should be 3.", (result == 3));
	}

	@Test
	void testAbs() {
		double result = 0;
		result = Calculator.abs(10);
		assertTrue("The result should be 10.", (result == 10));
	}
}
