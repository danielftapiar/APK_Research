.class Lnet/veritran/VTAbstractActivity$1;
.super Ljava/lang/Object;
.source "VTAbstractActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/VTAbstractActivity;->populate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/VTAbstractActivity;


# direct methods
.method constructor <init>(Lnet/veritran/VTAbstractActivity;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/VTAbstractActivity;

    .prologue
    .line 343
    iput-object p1, p0, Lnet/veritran/VTAbstractActivity$1;->this$0:Lnet/veritran/VTAbstractActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lnet/veritran/VTAbstractActivity$1;->this$0:Lnet/veritran/VTAbstractActivity;

    invoke-virtual {v0}, Lnet/veritran/VTAbstractActivity;->populateActivity()V

    .line 346
    return-void
.end method
