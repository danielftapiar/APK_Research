.class public abstract Lnet/veritran/vtuserapplication/configuration/ConfigurationGenericManager;
.super Ljava/lang/Object;


# instance fields
.field a:Lnet/veritran/vtuserapplication/model/SAXParserInterface;

.field b:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setFile(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getSAXParserImplementation()Lnet/veritran/vtuserapplication/model/SAXParserInterface;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationGenericManager;->a:Lnet/veritran/vtuserapplication/model/SAXParserInterface;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationGenericManager;->a:Lnet/veritran/vtuserapplication/model/SAXParserInterface;

    invoke-interface {v0, p1}, Lnet/veritran/vtuserapplication/model/SAXParserInterface;->setFilePath(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationGenericManager;->a:Lnet/veritran/vtuserapplication/model/SAXParserInterface;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationGenericManager;->b:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/model/SAXParserInterface;->setListener(Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;)V

    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 2

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getSAXParserImplementation()Lnet/veritran/vtuserapplication/model/SAXParserInterface;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationGenericManager;->a:Lnet/veritran/vtuserapplication/model/SAXParserInterface;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationGenericManager;->a:Lnet/veritran/vtuserapplication/model/SAXParserInterface;

    invoke-interface {v0, p1}, Lnet/veritran/vtuserapplication/model/SAXParserInterface;->setInputStream(Ljava/io/InputStream;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationGenericManager;->a:Lnet/veritran/vtuserapplication/model/SAXParserInterface;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationGenericManager;->b:Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/model/SAXParserInterface;->setListener(Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;)V

    return-void
.end method
