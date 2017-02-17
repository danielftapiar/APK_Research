.class public final enum Lcom/vrem/wifianalyzer/c/c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vrem/wifianalyzer/c/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vrem/wifianalyzer/c/c;

.field public static final enum b:Lcom/vrem/wifianalyzer/c/c;

.field private static final synthetic d:[Lcom/vrem/wifianalyzer/c/c;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/vrem/wifianalyzer/c/c;

    const-string v1, "COMPLETE"

    const v2, 0x7f04001d

    invoke-direct {v0, v1, v3, v2}, Lcom/vrem/wifianalyzer/c/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/vrem/wifianalyzer/c/c;->a:Lcom/vrem/wifianalyzer/c/c;

    new-instance v0, Lcom/vrem/wifianalyzer/c/c;

    const-string v1, "COMPACT"

    const v2, 0x7f04001c

    invoke-direct {v0, v1, v4, v2}, Lcom/vrem/wifianalyzer/c/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/vrem/wifianalyzer/c/c;->b:Lcom/vrem/wifianalyzer/c/c;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/vrem/wifianalyzer/c/c;

    sget-object v1, Lcom/vrem/wifianalyzer/c/c;->a:Lcom/vrem/wifianalyzer/c/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vrem/wifianalyzer/c/c;->b:Lcom/vrem/wifianalyzer/c/c;

    aput-object v1, v0, v4

    sput-object v0, Lcom/vrem/wifianalyzer/c/c;->d:[Lcom/vrem/wifianalyzer/c/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/vrem/wifianalyzer/c/c;->c:I

    return-void
.end method

.method public static a(I)Lcom/vrem/wifianalyzer/c/c;
    .locals 1

    if-ltz p0, :cond_0

    invoke-static {}, Lcom/vrem/wifianalyzer/c/c;->values()[Lcom/vrem/wifianalyzer/c/c;

    move-result-object v0

    array-length v0, v0

    if-lt p0, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/vrem/wifianalyzer/c/c;->a:Lcom/vrem/wifianalyzer/c/c;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/vrem/wifianalyzer/c/c;->values()[Lcom/vrem/wifianalyzer/c/c;

    move-result-object v0

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vrem/wifianalyzer/c/c;
    .locals 1

    const-class v0, Lcom/vrem/wifianalyzer/c/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vrem/wifianalyzer/c/c;

    return-object v0
.end method

.method public static values()[Lcom/vrem/wifianalyzer/c/c;
    .locals 1

    sget-object v0, Lcom/vrem/wifianalyzer/c/c;->d:[Lcom/vrem/wifianalyzer/c/c;

    invoke-virtual {v0}, [Lcom/vrem/wifianalyzer/c/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vrem/wifianalyzer/c/c;

    return-object v0
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Lcom/vrem/wifianalyzer/c/c;->c:I

    return v0
.end method
