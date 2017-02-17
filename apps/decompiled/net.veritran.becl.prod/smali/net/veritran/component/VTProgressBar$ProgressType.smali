.class final enum Lnet/veritran/component/VTProgressBar$ProgressType;
.super Ljava/lang/Enum;
.source "VTProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/component/VTProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ProgressType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/veritran/component/VTProgressBar$ProgressType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/veritran/component/VTProgressBar$ProgressType;

.field public static final enum CLOCK:Lnet/veritran/component/VTProgressBar$ProgressType;

.field public static final enum DEFAULT:Lnet/veritran/component/VTProgressBar$ProgressType;

.field public static final enum TEXT_CLOCK:Lnet/veritran/component/VTProgressBar$ProgressType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-instance v0, Lnet/veritran/component/VTProgressBar$ProgressType;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lnet/veritran/component/VTProgressBar$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/veritran/component/VTProgressBar$ProgressType;->DEFAULT:Lnet/veritran/component/VTProgressBar$ProgressType;

    .line 63
    new-instance v0, Lnet/veritran/component/VTProgressBar$ProgressType;

    const-string v1, "CLOCK"

    invoke-direct {v0, v1, v3}, Lnet/veritran/component/VTProgressBar$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/veritran/component/VTProgressBar$ProgressType;->CLOCK:Lnet/veritran/component/VTProgressBar$ProgressType;

    .line 64
    new-instance v0, Lnet/veritran/component/VTProgressBar$ProgressType;

    const-string v1, "TEXT_CLOCK"

    invoke-direct {v0, v1, v4}, Lnet/veritran/component/VTProgressBar$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/veritran/component/VTProgressBar$ProgressType;->TEXT_CLOCK:Lnet/veritran/component/VTProgressBar$ProgressType;

    .line 60
    const/4 v0, 0x3

    new-array v0, v0, [Lnet/veritran/component/VTProgressBar$ProgressType;

    sget-object v1, Lnet/veritran/component/VTProgressBar$ProgressType;->DEFAULT:Lnet/veritran/component/VTProgressBar$ProgressType;

    aput-object v1, v0, v2

    sget-object v1, Lnet/veritran/component/VTProgressBar$ProgressType;->CLOCK:Lnet/veritran/component/VTProgressBar$ProgressType;

    aput-object v1, v0, v3

    sget-object v1, Lnet/veritran/component/VTProgressBar$ProgressType;->TEXT_CLOCK:Lnet/veritran/component/VTProgressBar$ProgressType;

    aput-object v1, v0, v4

    sput-object v0, Lnet/veritran/component/VTProgressBar$ProgressType;->$VALUES:[Lnet/veritran/component/VTProgressBar$ProgressType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/veritran/component/VTProgressBar$ProgressType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    const-class v0, Lnet/veritran/component/VTProgressBar$ProgressType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/veritran/component/VTProgressBar$ProgressType;

    return-object v0
.end method

.method public static values()[Lnet/veritran/component/VTProgressBar$ProgressType;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lnet/veritran/component/VTProgressBar$ProgressType;->$VALUES:[Lnet/veritran/component/VTProgressBar$ProgressType;

    invoke-virtual {v0}, [Lnet/veritran/component/VTProgressBar$ProgressType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/veritran/component/VTProgressBar$ProgressType;

    return-object v0
.end method
