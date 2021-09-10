.class public final Lcom/google/firebase/components/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/components/g$b;,
        Lcom/google/firebase/components/g$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/firebase/components/g$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/g$c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/google/firebase/components/g$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/firebase/components/g$c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/components/g;->a:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/components/g;->b:Lcom/google/firebase/components/g$c;

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/Class;)Lcom/google/firebase/components/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;)",
            "Lcom/google/firebase/components/g<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/firebase/components/g;

    new-instance v1, Lcom/google/firebase/components/g$b;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/firebase/components/g$b;-><init>(Ljava/lang/Class;Lcom/google/firebase/components/g$a;)V

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/components/g;-><init>(Ljava/lang/Object;Lcom/google/firebase/components/g$c;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ld50<",
            "Lcom/google/firebase/components/i;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/google/firebase/components/g;->b:Lcom/google/firebase/components/g$c;

    iget-object v2, p0, Lcom/google/firebase/components/g;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/components/g$b;

    invoke-virtual {v1, v2}, Lcom/google/firebase/components/g$b;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-static {v2}, Lcom/google/firebase/components/f;->a(Ljava/lang/String;)Ld50;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
