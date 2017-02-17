.class Lnet/veritran/VTCommonActivity$RadioButtonOnClickListener;
.super Ljava/lang/Object;
.source "VTCommonActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/VTCommonActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RadioButtonOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/VTCommonActivity;

.field private type:I


# direct methods
.method public constructor <init>(Lnet/veritran/VTCommonActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/VTCommonActivity;
    .param p2, "type"    # I

    .prologue
    .line 2546
    iput-object p1, p0, Lnet/veritran/VTCommonActivity$RadioButtonOnClickListener;->this$0:Lnet/veritran/VTCommonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2547
    iput p2, p0, Lnet/veritran/VTCommonActivity$RadioButtonOnClickListener;->type:I

    .line 2548
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2552
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2579
    :goto_0
    return-void

    .line 2554
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lnet/veritran/VTCommonActivity$RadioButtonOnClickListener;->this$0:Lnet/veritran/VTCommonActivity;

    const-class v2, Lnet/veritran/VTCommonActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2575
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lnet/veritran/VTCommonActivity$RadioButtonOnClickListener;->this$0:Lnet/veritran/VTCommonActivity;

    iget-object v2, p0, Lnet/veritran/VTCommonActivity$RadioButtonOnClickListener;->this$0:Lnet/veritran/VTCommonActivity;

    iget-object v2, v2, Lnet/veritran/VTCommonActivity;->application:Lnet/veritran/VTUserApplicationSmart;

    invoke-virtual {v2}, Lnet/veritran/VTUserApplicationSmart;->getCurrentState()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lnet/veritran/VTCommonActivity;->changeState(ILandroid/content/Intent;)V

    goto :goto_0

    .line 2552
    nop

    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_0
    .end packed-switch
.end method
