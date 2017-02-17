.class Lnet/veritran/VTCommonActivity$Info;
.super Ljava/lang/Object;
.source "VTCommonActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/VTCommonActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Info"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/VTCommonActivity;

.field private tittle:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/veritran/VTCommonActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "_tittle"    # Ljava/lang/String;
    .param p3, "_value"    # Ljava/lang/String;

    .prologue
    .line 509
    iput-object p1, p0, Lnet/veritran/VTCommonActivity$Info;->this$0:Lnet/veritran/VTCommonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    iput-object p2, p0, Lnet/veritran/VTCommonActivity$Info;->tittle:Ljava/lang/String;

    .line 511
    iput-object p3, p0, Lnet/veritran/VTCommonActivity$Info;->value:Ljava/lang/String;

    .line 512
    return-void
.end method


# virtual methods
.method public getTittle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lnet/veritran/VTCommonActivity$Info;->tittle:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lnet/veritran/VTCommonActivity$Info;->value:Ljava/lang/String;

    return-object v0
.end method
