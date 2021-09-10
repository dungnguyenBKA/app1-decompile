.class public Lcom/caverock/androidsvg/a$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public a:Lcom/caverock/androidsvg/a$h;

.field public b:Lcom/caverock/androidsvg/c$d0;


# direct methods
.method public constructor <init>(Lcom/caverock/androidsvg/a$h;Lcom/caverock/androidsvg/c$d0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/caverock/androidsvg/a$f;->a:Lcom/caverock/androidsvg/a$h;

    .line 3
    iput-object v0, p0, Lcom/caverock/androidsvg/a$f;->b:Lcom/caverock/androidsvg/c$d0;

    .line 4
    iput-object p1, p0, Lcom/caverock/androidsvg/a$f;->a:Lcom/caverock/androidsvg/a$h;

    .line 5
    iput-object p2, p0, Lcom/caverock/androidsvg/a$f;->b:Lcom/caverock/androidsvg/c$d0;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/caverock/androidsvg/a$f;->a:Lcom/caverock/androidsvg/a$h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " {}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
