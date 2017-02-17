.class final enum Lnet/veritran/vtuserapplication/model/Model$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/vtuserapplication/model/Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/veritran/vtuserapplication/model/Model$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lnet/veritran/vtuserapplication/model/Model$b;

.field public static final enum b:Lnet/veritran/vtuserapplication/model/Model$b;

.field public static final enum c:Lnet/veritran/vtuserapplication/model/Model$b;

.field public static final enum d:Lnet/veritran/vtuserapplication/model/Model$b;

.field private static final synthetic e:[Lnet/veritran/vtuserapplication/model/Model$b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lnet/veritran/vtuserapplication/model/Model$b;

    const-string v1, "ASC"

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/Model$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/veritran/vtuserapplication/model/Model$b;->a:Lnet/veritran/vtuserapplication/model/Model$b;

    new-instance v0, Lnet/veritran/vtuserapplication/model/Model$b;

    const-string v1, "DESC"

    invoke-direct {v0, v1, v3}, Lnet/veritran/vtuserapplication/model/Model$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/veritran/vtuserapplication/model/Model$b;->b:Lnet/veritran/vtuserapplication/model/Model$b;

    new-instance v0, Lnet/veritran/vtuserapplication/model/Model$b;

    const-string v1, "ASCNUM"

    invoke-direct {v0, v1, v4}, Lnet/veritran/vtuserapplication/model/Model$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/veritran/vtuserapplication/model/Model$b;->c:Lnet/veritran/vtuserapplication/model/Model$b;

    new-instance v0, Lnet/veritran/vtuserapplication/model/Model$b;

    const-string v1, "DESCNUM"

    invoke-direct {v0, v1, v5}, Lnet/veritran/vtuserapplication/model/Model$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/veritran/vtuserapplication/model/Model$b;->d:Lnet/veritran/vtuserapplication/model/Model$b;

    const/4 v0, 0x4

    new-array v0, v0, [Lnet/veritran/vtuserapplication/model/Model$b;

    sget-object v1, Lnet/veritran/vtuserapplication/model/Model$b;->a:Lnet/veritran/vtuserapplication/model/Model$b;

    aput-object v1, v0, v2

    sget-object v1, Lnet/veritran/vtuserapplication/model/Model$b;->b:Lnet/veritran/vtuserapplication/model/Model$b;

    aput-object v1, v0, v3

    sget-object v1, Lnet/veritran/vtuserapplication/model/Model$b;->c:Lnet/veritran/vtuserapplication/model/Model$b;

    aput-object v1, v0, v4

    sget-object v1, Lnet/veritran/vtuserapplication/model/Model$b;->d:Lnet/veritran/vtuserapplication/model/Model$b;

    aput-object v1, v0, v5

    sput-object v0, Lnet/veritran/vtuserapplication/model/Model$b;->e:[Lnet/veritran/vtuserapplication/model/Model$b;

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

.method public static valueOf(Ljava/lang/String;)Lnet/veritran/vtuserapplication/model/Model$b;
    .locals 1

    const-class v0, Lnet/veritran/vtuserapplication/model/Model$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/model/Model$b;

    return-object v0
.end method

.method public static values()[Lnet/veritran/vtuserapplication/model/Model$b;
    .locals 1

    sget-object v0, Lnet/veritran/vtuserapplication/model/Model$b;->e:[Lnet/veritran/vtuserapplication/model/Model$b;

    invoke-virtual {v0}, [Lnet/veritran/vtuserapplication/model/Model$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/veritran/vtuserapplication/model/Model$b;

    return-object v0
.end method
