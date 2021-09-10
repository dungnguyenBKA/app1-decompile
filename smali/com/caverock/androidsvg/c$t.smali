.class public Lcom/caverock/androidsvg/c$t;
.super Lcom/caverock/androidsvg/c$n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "t"
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public c:Lcom/caverock/androidsvg/c$n0;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/caverock/androidsvg/c$n0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/caverock/androidsvg/c$n0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/caverock/androidsvg/c$t;->b:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/caverock/androidsvg/c$t;->c:Lcom/caverock/androidsvg/c$n0;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/caverock/androidsvg/c$t;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/caverock/androidsvg/c$t;->c:Lcom/caverock/androidsvg/c$n0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
