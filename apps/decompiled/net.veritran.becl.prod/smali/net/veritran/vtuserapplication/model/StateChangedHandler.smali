.class public abstract Lnet/veritran/vtuserapplication/model/StateChangedHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/veritran/vtuserapplication/model/StateChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public stateChanged(Lnet/veritran/vtuserapplication/states/State;)V
    .locals 0

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/states/State;->process()V

    return-void
.end method
