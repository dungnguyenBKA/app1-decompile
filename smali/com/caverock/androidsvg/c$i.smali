.class public Lcom/caverock/androidsvg/c$i;
.super Lcom/caverock/androidsvg/c$k0;
.source "SourceFile"

# interfaces
.implements Lcom/caverock/androidsvg/c$i0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "i"
.end annotation


# instance fields
.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/c$m0;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/Boolean;

.field public j:Landroid/graphics/Matrix;

.field public k:Lcom/caverock/androidsvg/c$j;

.field public l:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/caverock/androidsvg/c$k0;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/c$i;->h:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/c$m0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/c$i;->h:Ljava/util/List;

    return-object v0
.end method

.method public c(Lcom/caverock/androidsvg/c$m0;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/caverock/androidsvg/c$c0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/caverock/androidsvg/c$i;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Gradient elements cannot contain "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " elements."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
