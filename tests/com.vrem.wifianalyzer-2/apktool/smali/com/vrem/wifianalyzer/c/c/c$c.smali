.class Lcom/vrem/wifianalyzer/c/c/c$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vrem/wifianalyzer/c/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/vrem/wifianalyzer/c/c/j;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/vrem/wifianalyzer/c/c/j;Lcom/vrem/wifianalyzer/c/c/j;)I
    .locals 1

    invoke-virtual {p1, p2}, Lcom/vrem/wifianalyzer/c/c/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/vrem/wifianalyzer/c/c/j;

    check-cast p2, Lcom/vrem/wifianalyzer/c/c/j;

    invoke-virtual {p0, p1, p2}, Lcom/vrem/wifianalyzer/c/c/c$c;->a(Lcom/vrem/wifianalyzer/c/c/j;Lcom/vrem/wifianalyzer/c/c/j;)I

    move-result v0

    return v0
.end method
