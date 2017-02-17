.class Lnet/veritran/component/VTInputText$5;
.super Ljava/lang/Object;
.source "VTInputText.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/component/VTInputText;->initInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/component/VTInputText;


# direct methods
.method constructor <init>(Lnet/veritran/component/VTInputText;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/component/VTInputText;

    .prologue
    .line 894
    iput-object p1, p0, Lnet/veritran/component/VTInputText$5;->this$0:Lnet/veritran/component/VTInputText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 899
    and-int/lit16 v0, p2, 0xff

    .line 900
    .local v0, "result":I
    packed-switch v0, :pswitch_data_0

    .line 914
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 903
    :pswitch_0
    iget-object v2, p0, Lnet/veritran/component/VTInputText$5;->this$0:Lnet/veritran/component/VTInputText;

    iget-object v2, v2, Lnet/veritran/component/VTInputText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v3, "submitbutton"

    invoke-virtual {v2, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 904
    .local v1, "sSubmitButton":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 905
    iget-object v2, p0, Lnet/veritran/component/VTInputText$5;->this$0:Lnet/veritran/component/VTInputText;

    invoke-virtual {v2}, Lnet/veritran/component/VTInputText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v1

    .line 906
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 908
    iget-object v2, p0, Lnet/veritran/component/VTInputText$5;->this$0:Lnet/veritran/component/VTInputText;

    invoke-virtual {v2}, Lnet/veritran/component/VTInputText;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v2

    const-string v3, "CLICK"

    invoke-virtual {v2, v1, v3}, Lnet/veritran/VTCommonActivity;->sendMessageToComponent(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 900
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method
