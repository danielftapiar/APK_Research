.class public final enum Lcom/a/a/c$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/a/a/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/a/a/c$a;

.field public static final enum b:Lcom/a/a/c$a;

.field public static final enum c:Lcom/a/a/c$a;

.field public static final enum d:Lcom/a/a/c$a;

.field private static final synthetic e:[Lcom/a/a/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/a/a/c$a;

    const-string v1, "BOTH"

    invoke-direct {v0, v1, v2}, Lcom/a/a/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/c$a;->a:Lcom/a/a/c$a;

    new-instance v0, Lcom/a/a/c$a;

    const-string v1, "VERTICAL"

    invoke-direct {v0, v1, v3}, Lcom/a/a/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/c$a;->b:Lcom/a/a/c$a;

    new-instance v0, Lcom/a/a/c$a;

    const-string v1, "HORIZONTAL"

    invoke-direct {v0, v1, v4}, Lcom/a/a/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/c$a;->c:Lcom/a/a/c$a;

    new-instance v0, Lcom/a/a/c$a;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v5}, Lcom/a/a/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/c$a;->d:Lcom/a/a/c$a;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/a/a/c$a;

    sget-object v1, Lcom/a/a/c$a;->a:Lcom/a/a/c$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/a/a/c$a;->b:Lcom/a/a/c$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/a/a/c$a;->c:Lcom/a/a/c$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/a/a/c$a;->d:Lcom/a/a/c$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/a/a/c$a;->e:[Lcom/a/a/c$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/c$a;
    .locals 1

    const-class v0, Lcom/a/a/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/a/c$a;

    return-object v0
.end method

.method public static values()[Lcom/a/a/c$a;
    .locals 1

    sget-object v0, Lcom/a/a/c$a;->e:[Lcom/a/a/c$a;

    invoke-virtual {v0}, [Lcom/a/a/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/c$a;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    sget-object v0, Lcom/a/a/c$a;->a:Lcom/a/a/c$a;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/a/a/c$a;->b:Lcom/a/a/c$a;

    if-ne p0, v0, :cond_1

    sget-object v0, Lcom/a/a/c$a;->d:Lcom/a/a/c$a;

    if-eq p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    sget-object v0, Lcom/a/a/c$a;->a:Lcom/a/a/c$a;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/a/a/c$a;->c:Lcom/a/a/c$a;

    if-ne p0, v0, :cond_1

    sget-object v0, Lcom/a/a/c$a;->d:Lcom/a/a/c$a;

    if-eq p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
