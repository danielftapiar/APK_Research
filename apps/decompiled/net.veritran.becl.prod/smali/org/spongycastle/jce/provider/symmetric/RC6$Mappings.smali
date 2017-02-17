.class public Lorg/spongycastle/jce/provider/symmetric/RC6$Mappings;
.super Ljava/util/HashMap;
.source "RC6.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/symmetric/RC6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 126
    const-string v0, "Cipher.RC6"

    const-string v1, "org.spongycastle.jce.provider.symmetric.RC6$ECB"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/RC6$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v0, "KeyGenerator.RC6"

    const-string v1, "org.spongycastle.jce.provider.symmetric.RC6$KeyGen"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/RC6$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v0, "AlgorithmParameters.RC6"

    const-string v1, "org.spongycastle.jce.provider.symmetric.RC6$AlgParams"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/RC6$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-void
.end method
