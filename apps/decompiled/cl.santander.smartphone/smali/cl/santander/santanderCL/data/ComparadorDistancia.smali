.class public Lcl/santander/santanderCL/data/ComparadorDistancia;
.super Ljava/lang/Object;
.source "ComparadorDistancia.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcl/santander/santanderCL/data/response/ItemPOI;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcl/santander/santanderCL/data/response/ItemPOI;Lcl/santander/santanderCL/data/response/ItemPOI;)I
    .locals 4
    .param p1, "arg0"    # Lcl/santander/santanderCL/data/response/ItemPOI;
    .param p2, "arg1"    # Lcl/santander/santanderCL/data/response/ItemPOI;

    .prologue
    .line 13
    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemPOI;->getDistancia()D

    move-result-wide v0

    invoke-virtual {p2}, Lcl/santander/santanderCL/data/response/ItemPOI;->getDistancia()D

    move-result-wide v2

    sub-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcl/santander/santanderCL/data/response/ItemPOI;

    check-cast p2, Lcl/santander/santanderCL/data/response/ItemPOI;

    invoke-virtual {p0, p1, p2}, Lcl/santander/santanderCL/data/ComparadorDistancia;->compare(Lcl/santander/santanderCL/data/response/ItemPOI;Lcl/santander/santanderCL/data/response/ItemPOI;)I

    move-result v0

    return v0
.end method
