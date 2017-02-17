.class public final Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$ErrorMessage;
.super Ljava/lang/Object;
.source "FacebookConectActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorMessage"
.end annotation


# instance fields
.field code:I

.field parameter:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "errcode"    # I
    .param p2, "param"    # Ljava/lang/Object;

    .prologue
    .line 849
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 850
    iput p1, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$ErrorMessage;->code:I

    .line 851
    iput-object p2, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$ErrorMessage;->parameter:Ljava/lang/Object;

    .line 852
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 855
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$ErrorMessage;->code:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$ErrorMessage;->parameter:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
