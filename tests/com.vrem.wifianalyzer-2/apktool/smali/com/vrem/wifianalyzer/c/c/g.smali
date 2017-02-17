.class public Lcom/vrem/wifianalyzer/c/c/g;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/vrem/wifianalyzer/c/c/g;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Z

.field private final d:Lcom/vrem/wifianalyzer/c/c/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/vrem/wifianalyzer/c/c/g;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vrem/wifianalyzer/c/c/g;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/vrem/wifianalyzer/c/c/g;->a:Lcom/vrem/wifianalyzer/c/c/g;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/vrem/wifianalyzer/c/c/h;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/vrem/wifianalyzer/c/c/g;-><init>(Ljava/lang/String;Lcom/vrem/wifianalyzer/c/c/h;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/vrem/wifianalyzer/c/c/h;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vrem/wifianalyzer/c/c/g;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/vrem/wifianalyzer/c/c/g;->d:Lcom/vrem/wifianalyzer/c/c/h;

    iput-boolean p3, p0, Lcom/vrem/wifianalyzer/c/c/g;->c:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lcom/vrem/wifianalyzer/c/c/h;->a:Lcom/vrem/wifianalyzer/c/c/h;

    invoke-direct {p0, p1, v0, p2}, Lcom/vrem/wifianalyzer/c/c/g;-><init>(Ljava/lang/String;Lcom/vrem/wifianalyzer/c/c/h;Z)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/c/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/vrem/wifianalyzer/c/c/h;
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/c/g;->d:Lcom/vrem/wifianalyzer/c/c/h;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vrem/wifianalyzer/c/c/g;->c:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, La/a/a/a/a/e;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
