.class final enum Lnet/veritran/component/VTProgressBar$AutoDumpFormat;
.super Ljava/lang/Enum;
.source "VTProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/component/VTProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AutoDumpFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/veritran/component/VTProgressBar$AutoDumpFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/veritran/component/VTProgressBar$AutoDumpFormat;

.field public static final enum MINUTES_SECONDS_ELAPSED:Lnet/veritran/component/VTProgressBar$AutoDumpFormat;

.field public static final enum MINUTES_SECONDS_REMAINING:Lnet/veritran/component/VTProgressBar$AutoDumpFormat;

.field public static final enum SECONDS_ELAPSED:Lnet/veritran/component/VTProgressBar$AutoDumpFormat;

.field public static final enum SECONDS_REMAINING:Lnet/veritran/component/VTProgressBar$AutoDumpFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lnet/veritran/component/VTProgressBar$AutoDumpFormat;

    const-string v1, "SECONDS_ELAPSED"

    invoke-direct {v0, v1, v2}, Lnet/veritran/component/VTProgressBar$AutoDumpFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/veritran/component/VTProgressBar$AutoDumpFormat;->SECONDS_ELAPSED:Lnet/veritran/component/VTProgressBar$AutoDumpFormat;

    .line 55
    new-instance v0, Lnet/veritran/component/VTProgressBar$AutoDumpFormat;

    const-string v1, "SECONDS_REMAINING"

    invoke-direct {v0, v1, v3}, Lnet/veritran/component/VTProgressBar$AutoDumpFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/veritran/component/VTProgressBar$AutoDumpFormat;->SECONDS_REMAINING:Lnet/veritran/component/VTProgressBar$AutoDumpFormat;

    .line 56
    new-instance v0, Lnet/veritran/component/VTProgressBar$AutoDumpFormat;

    const-string v1, "MINUTES_SECONDS_ELAPSED"

    invoke-direct {v0, v1, v4}, Lnet/veritran/component/VTProgressBar$AutoDumpFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/veritran/component/VTProgressBar$AutoDumpFormat;->MINUTES_SECONDS_ELAPSED:Lnet/veritran/component/VTProgressBar$AutoDumpFormat;

    .line 57
    new-instance v0, Lnet/veritran/component/VTProgressBar$AutoDumpFormat;

    const-string v1, "MINUTES_SECONDS_REMAINING"

    invoke-direct {v0, v1, v5}, Lnet/veritran/component/VTProgressBar$AutoDumpFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/veritran/component/VTProgressBar$AutoDumpFormat;->MINUTES_SECONDS_REMAINING:Lnet/veritran/component/VTProgressBar$AutoDumpFormat;

    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [Lnet/veritran/component/VTProgressBar$AutoDumpFormat;

    sget-object v1, Lnet/veritran/component/VTProgressBar$AutoDumpFormat;->SECONDS_ELAPSED:Lnet/veritran/component/VTProgressBar$AutoDumpFormat;

    aput-object v1, v0, v2

    sget-object v1, Lnet/veritran/component/VTProgressBar$AutoDumpFormat;->SECONDS_REMAINING:Lnet/veritran/component/VTProgressBar$AutoDumpFormat;

    aput-object v1, v0, v3

    sget-object v1, Lnet/veritran/component/VTProgressBar$AutoDumpFormat;->MINUTES_SECONDS_ELAPSED:Lnet/veritran/component/VTProgressBar$AutoDumpFormat;

    aput-object v1, v0, v4

    sget-object v1, Lnet/veritran/component/VTProgressBar$AutoDumpFormat;->MINUTES_SECONDS_REMAINING:Lnet/veritran/component/VTProgressBar$AutoDumpFormat;

    aput-object v1, v0, v5

    sput-object v0, Lnet/veritran/component/VTProgressBar$AutoDumpFormat;->$VALUES:[Lnet/veritran/component/VTProgressBar$AutoDumpFormat;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/veritran/component/VTProgressBar$AutoDumpFormat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    const-class v0, Lnet/veritran/component/VTProgressBar$AutoDumpFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/veritran/component/VTProgressBar$AutoDumpFormat;

    return-object v0
.end method

.method public static values()[Lnet/veritran/component/VTProgressBar$AutoDumpFormat;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lnet/veritran/component/VTProgressBar$AutoDumpFormat;->$VALUES:[Lnet/veritran/component/VTProgressBar$AutoDumpFormat;

    invoke-virtual {v0}, [Lnet/veritran/component/VTProgressBar$AutoDumpFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/veritran/component/VTProgressBar$AutoDumpFormat;

    return-object v0
.end method
