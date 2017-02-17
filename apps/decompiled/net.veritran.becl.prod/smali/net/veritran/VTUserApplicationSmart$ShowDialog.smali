.class Lnet/veritran/VTUserApplicationSmart$ShowDialog;
.super Ljava/lang/Object;
.source "VTUserApplicationSmart.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/VTUserApplicationSmart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowDialog"
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private errorId:I

.field private id:I

.field final synthetic this$0:Lnet/veritran/VTUserApplicationSmart;


# direct methods
.method public constructor <init>(Lnet/veritran/VTUserApplicationSmart;Landroid/app/Activity;I)V
    .locals 1
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "id"    # I

    .prologue
    .line 2105
    iput-object p1, p0, Lnet/veritran/VTUserApplicationSmart$ShowDialog;->this$0:Lnet/veritran/VTUserApplicationSmart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2103
    const/4 v0, -0x1

    iput v0, p0, Lnet/veritran/VTUserApplicationSmart$ShowDialog;->errorId:I

    .line 2106
    iput p3, p0, Lnet/veritran/VTUserApplicationSmart$ShowDialog;->id:I

    .line 2107
    iput-object p2, p0, Lnet/veritran/VTUserApplicationSmart$ShowDialog;->activity:Landroid/app/Activity;

    .line 2108
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2111
    iget-object v0, p0, Lnet/veritran/VTUserApplicationSmart$ShowDialog;->activity:Landroid/app/Activity;

    iget v1, p0, Lnet/veritran/VTUserApplicationSmart$ShowDialog;->id:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 2112
    return-void
.end method
