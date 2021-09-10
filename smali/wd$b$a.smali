.class Lwd$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lil$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwd$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lil$b<",
        "Lxd<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lwd$b;


# direct methods
.method constructor <init>(Lwd$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwd$b$a;->a:Lwd$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 9

    .line 1
    new-instance v8, Lxd;

    iget-object v0, p0, Lwd$b$a;->a:Lwd$b;

    iget-object v1, v0, Lwd$b;->a:Llf;

    iget-object v2, v0, Lwd$b;->b:Llf;

    iget-object v3, v0, Lwd$b;->c:Llf;

    iget-object v4, v0, Lwd$b;->d:Llf;

    iget-object v5, v0, Lwd$b;->e:Lyd;

    iget-object v6, v0, Lwd$b;->f:Lbe$a;

    iget-object v7, v0, Lwd$b;->g:Lk2;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lxd;-><init>(Llf;Llf;Llf;Llf;Lyd;Lbe$a;Lk2;)V

    return-object v8
.end method
