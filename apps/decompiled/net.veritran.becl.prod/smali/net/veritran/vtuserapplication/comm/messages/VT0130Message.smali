.class public Lnet/veritran/vtuserapplication/comm/messages/VT0130Message;
.super Lnet/veritran/vtuserapplication/comm/messages/ConfigurationIncomingMessage;


# direct methods
.method public constructor <init>(Lnet/veritran/vtuserapplication/comm/MessageManager;)V
    .locals 2

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/comm/messages/ConfigurationIncomingMessage;-><init>()V

    :try_start_0
    iget v0, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0130Message;->_responseCode:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lnet/veritran/vtuserapplication/comm/messages/VT0130Message;->statesBuilder(Lnet/veritran/vtuserapplication/comm/MessageManager;)V

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/comm/messages/VT0130Message;->bannersBuilder()V

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/comm/messages/VT0130Message;->imagesBuilder()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public process(Lnet/veritran/vtuserapplication/comm/MessageManager;)Z
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lnet/veritran/vtuserapplication/comm/messages/VT0130Message;->statesProcess(Lnet/veritran/vtuserapplication/comm/MessageManager;)Z

    invoke-virtual {p0, p1}, Lnet/veritran/vtuserapplication/comm/messages/VT0130Message;->bannersProcess(Lnet/veritran/vtuserapplication/comm/MessageManager;)Z

    invoke-virtual {p0, p1}, Lnet/veritran/vtuserapplication/comm/messages/VT0130Message;->imagesProcess(Lnet/veritran/vtuserapplication/comm/MessageManager;)Z

    iget v0, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0130Message;->_responseCode:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v1

    :pswitch_0
    invoke-virtual {p1, v2}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setNextState(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1, v1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->configurationUpdateFinished(Z)Z

    invoke-virtual {p1, v2}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setNextState(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1, v1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setNextState(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
