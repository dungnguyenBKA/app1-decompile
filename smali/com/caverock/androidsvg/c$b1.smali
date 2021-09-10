.class public Lcom/caverock/androidsvg/c$b1;
.super Lcom/caverock/androidsvg/c$m0;
.source "SourceFile"

# interfaces
.implements Lcom/caverock/androidsvg/c$w0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "b1"
.end annotation


# instance fields
.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/caverock/androidsvg/c$m0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/caverock/androidsvg/c$b1;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public g()Lcom/caverock/androidsvg/c$a1;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lcom/caverock/androidsvg/c$b1;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/caverock/androidsvg/c$b1;->c:Ljava/lang/String;

    const-string v2, "\'"

    invoke-static {v0, v1, v2}, Lic;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
