.class Lcom/vrem/wifianalyzer/b/a/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/vrem/wifianalyzer/b/a/d;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/vrem/wifianalyzer/b/a/d;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/vrem/wifianalyzer/b/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/vrem/wifianalyzer/b/a/d;->a:Lcom/vrem/wifianalyzer/b/a/d;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vrem/wifianalyzer/b/a/d;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/vrem/wifianalyzer/b/a/d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/b/a/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/b/a/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v1, La/a/a/a/a/b;

    invoke-direct {v1}, La/a/a/a/a/b;-><init>()V

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/b/a/d;->a()Ljava/lang/String;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lcom/vrem/wifianalyzer/b/a/d;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/b/a/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, La/a/a/a/a/b;->a(Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a/a/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/b/a/d;->b()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Lcom/vrem/wifianalyzer/b/a/d;

    invoke-virtual {p1}, Lcom/vrem/wifianalyzer/b/a/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, La/a/a/a/a/b;->a(Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a/a/b;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a/a/b;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    new-instance v0, La/a/a/a/a/c;

    const/16 v1, 0x11

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, La/a/a/a/a/c;-><init>(II)V

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/b/a/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, La/a/a/a/a/c;->a(Ljava/lang/Object;)La/a/a/a/a/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/b/a/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, La/a/a/a/a/c;->a(Ljava/lang/Object;)La/a/a/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a/a/c;->a()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, La/a/a/a/a/e;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
