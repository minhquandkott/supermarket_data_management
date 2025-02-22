package org.cp612.fdd;

import java.util.Objects;
import java.util.Set;

public class FunctionalDependency {
    Set<String> lhs;
    Set<String> rhs;

    public FunctionalDependency(Set<String> lhs, Set<String> rhs) {
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
