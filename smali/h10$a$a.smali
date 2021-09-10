.class Lh10$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh10$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldw<",
        "TT;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lh10$a;


# direct methods
.method constructor <init>(Lh10$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh10$a$a;->a:Lh10$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lkw;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lkw;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lh10$a$a;->a:Lh10$a;

    iget-object v0, v0, Lh10$a;->c:Llw;

    invoke-virtual {p1}, Lkw;->j()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Llw;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lh10$a$a;->a:Lh10$a;

    iget-object v0, v0, Lh10$a;->c:Llw;

    invoke-virtual {p1}, Lkw;->i()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, p1}, Llw;->b(Ljava/lang/Exception;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
