.class Lnet/veritran/vtuserapplication/utils/PreferenceFragment$1;
.super Landroid/os/Handler;
.source "PreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/vtuserapplication/utils/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/vtuserapplication/utils/PreferenceFragment;


# direct methods
.method constructor <init>(Lnet/veritran/vtuserapplication/utils/PreferenceFragment;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/vtuserapplication/utils/PreferenceFragment;

    .prologue
    .line 39
    iput-object p1, p0, Lnet/veritran/vtuserapplication/utils/PreferenceFragment$1;->this$0:Lnet/veritran/vtuserapplication/utils/PreferenceFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 42
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 50
    :goto_0
    return-void

    .line 44
    :pswitch_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/utils/PreferenceFragment$1;->this$0:Lnet/veritran/vtuserapplication/utils/PreferenceFragment;

    # invokes: Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->bindPreferences()V
    invoke-static {v0}, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->access$000(Lnet/veritran/vtuserapplication/utils/PreferenceFragment;)V

    goto :goto_0

    .line 47
    :pswitch_1
    iget-object v0, p0, Lnet/veritran/vtuserapplication/utils/PreferenceFragment$1;->this$0:Lnet/veritran/vtuserapplication/utils/PreferenceFragment;

    # getter for: Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->mList:Landroid/widget/ListView;
    invoke-static {v0}, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->access$100(Lnet/veritran/vtuserapplication/utils/PreferenceFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/utils/PreferenceFragment$1;->this$0:Lnet/veritran/vtuserapplication/utils/PreferenceFragment;

    # getter for: Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->mList:Landroid/widget/ListView;
    invoke-static {v1}, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->access$100(Lnet/veritran/vtuserapplication/utils/PreferenceFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->focusableViewAvailable(Landroid/view/View;)V

    goto :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
