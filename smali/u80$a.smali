.class Lu80$a;
.super Lz60;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu80;->a(Lj60;Lz80;)Lz60;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz60<",
        "TT1;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Lu80;


# direct methods
.method constructor <init>(Lu80;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu80$a;->b:Lu80;

    iput-object p2, p0, Lu80$a;->a:Ljava/lang/Class;

    invoke-direct {p0}, Lz60;-><init>()V

    return-void
.end method


# virtual methods
.method public b(La90;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La90;",
            ")TT1;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu80$a;->b:Lu80;

    iget-object v0, v0, Lu80;->c:Lz60;

    invoke-virtual {v0, p1}, Lz60;->b(La90;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lu80$a;->a:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lx60;

    const-string v1, "Expected a "

    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lu80$a;->a:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lx60;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public c(Lc90;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc90;",
            "TT1;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu80$a;->b:Lu80;

    iget-object v0, v0, Lu80;->c:Lz60;

    invoke-virtual {v0, p1, p2}, Lz60;->c(Lc90;Ljava/lang/Object;)V

    return-void
.end method
