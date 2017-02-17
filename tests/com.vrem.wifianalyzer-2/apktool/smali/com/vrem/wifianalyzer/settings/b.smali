.class Lcom/vrem/wifianalyzer/settings/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/vrem/wifianalyzer/settings/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vrem/wifianalyzer/settings/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vrem/wifianalyzer/settings/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/vrem/wifianalyzer/settings/b;)I
    .locals 3

    new-instance v0, La/a/a/a/a/a;

    invoke-direct {v0}, La/a/a/a/a/a;-><init>()V

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/settings/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vrem/wifianalyzer/settings/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, La/a/a/a/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/settings/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vrem/wifianalyzer/settings/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, La/a/a/a/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a/a/a;->a()I

    move-result v0

    return v0
.end method

.method a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/settings/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/settings/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/vrem/wifianalyzer/settings/b;

    invoke-virtual {p0, p1}, Lcom/vrem/wifianalyzer/settings/b;->a(Lcom/vrem/wifianalyzer/settings/b;)I

    move-result v0

    return v0
.end method
