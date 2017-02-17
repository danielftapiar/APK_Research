.class public Lme/regexp/REUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRE(Ljava/lang/String;)Lme/regexp/RE;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lme/regexp/RESyntaxException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lme/regexp/REUtil;->createRE(Ljava/lang/String;I)Lme/regexp/RE;

    move-result-object v0

    return-object v0
.end method

.method public static createRE(Ljava/lang/String;I)Lme/regexp/RE;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lme/regexp/RESyntaxException;
        }
    .end annotation

    const-string v0, "complex:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lme/regexp/RE;

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lme/regexp/RE;-><init>(Ljava/lang/String;I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lme/regexp/RE;

    invoke-static {p0}, Lme/regexp/RE;->simplePatternToFullRegularExpression(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lme/regexp/RE;-><init>(Ljava/lang/String;I)V

    goto :goto_0
.end method
