package org.cp612.fdd;

import java.util.List;
import java.util.Objects;

public class FunctionalDependency {
    private final List<String> lhs;
    private final List<String> rhs;

    public FunctionalDependency(List<String> lhs, List<String> rhs) {
        this.lhs = lhs;
        this.rhs = rhs;
    }

    @Override
    public String toString() {
        return String.join(", ", lhs) + " -> " + String.join(", ", rhs);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        FunctionalDependency that = (FunctionalDependency) o;
        return Objects.equals(lhs, that.lhs) && Objects.equals(rhs, that.rhs);
    }

    @Override
    public int hashCode() {
        return Objects.hash(lhs, rhs);
    }
}
