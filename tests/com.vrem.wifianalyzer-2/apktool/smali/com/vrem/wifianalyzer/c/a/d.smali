.class public Lcom/vrem/wifianalyzer/c/a/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/vrem/wifianalyzer/c/a/a;

.field private static final b:Lcom/vrem/wifianalyzer/c/a/e;

.field private static final c:Lcom/vrem/wifianalyzer/c/a/f;


# instance fields
.field private final d:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vrem/wifianalyzer/c/a/a;

    invoke-direct {v0}, Lcom/vrem/wifianalyzer/c/a/a;-><init>()V

    sput-object v0, Lcom/vrem/wifianalyzer/c/a/d;->a:Lcom/vrem/wifianalyzer/c/a/a;

    new-instance v0, Lcom/vrem/wifianalyzer/c/a/e;

    invoke-direct {v0}, Lcom/vrem/wifianalyzer/c/a/e;-><init>()V

    sput-object v0, Lcom/vrem/wifianalyzer/c/a/d;->b:Lcom/vrem/wifianalyzer/c/a/e;

    new-instance v0, Lcom/vrem/wifianalyzer/c/a/f;

    invoke-direct {v0}, Lcom/vrem/wifianalyzer/c/a/f;-><init>()V

    sput-object v0, Lcom/vrem/wifianalyzer/c/a/d;->c:Lcom/vrem/wifianalyzer/c/a/f;

    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vrem/wifianalyzer/c/a/d;->d:Ljava/util/Locale;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/vrem/wifianalyzer/c/a/d;
    .locals 2

    new-instance v0, Lcom/vrem/wifianalyzer/c/a/d;

    sget-object v1, Lcom/vrem/wifianalyzer/c/a/d;->a:Lcom/vrem/wifianalyzer/c/a/a;

    invoke-virtual {v1, p0}, Lcom/vrem/wifianalyzer/c/a/a;->a(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vrem/wifianalyzer/c/a/d;-><init>(Ljava/util/Locale;)V

    return-object v0
.end method

.method public static a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vrem/wifianalyzer/c/a/d;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/vrem/wifianalyzer/c/a/d;->a:Lcom/vrem/wifianalyzer/c/a/a;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/a/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    new-instance v3, Lcom/vrem/wifianalyzer/c/a/d;

    invoke-direct {v3, v0}, Lcom/vrem/wifianalyzer/c/a/d;-><init>(Ljava/util/Locale;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method a(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/a/d;->d()Ljava/util/SortedSet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/a/d;->d:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method b(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/a/d;->e()Ljava/util/SortedSet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/a/d;->d:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    iget-object v1, p0, Lcom/vrem/wifianalyzer/c/a/d;->d:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-Unknown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public d()Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/vrem/wifianalyzer/c/a/d;->b:Lcom/vrem/wifianalyzer/c/a/e;

    iget-object v1, p0, Lcom/vrem/wifianalyzer/c/a/d;->d:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vrem/wifianalyzer/c/a/e;->a(Ljava/lang/String;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/vrem/wifianalyzer/c/a/d;->c:Lcom/vrem/wifianalyzer/c/a/f;

    iget-object v1, p0, Lcom/vrem/wifianalyzer/c/a/d;->d:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vrem/wifianalyzer/c/a/f;->a(Ljava/lang/String;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method
