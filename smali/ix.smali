.class final Lix;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldw<",
        "Ljava/lang/Void;",
        "Lkw<",
        "Ljava/util/List<",
        "Lkw<",
        "*>;>;>;>;"
    }
.end annotation


# instance fields
.field private final synthetic a:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lix;->a:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic then(Lkw;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v0, p0, Lix;->a:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-static {p1}, Lnw;->d(Ljava/lang/Object;)Lkw;

    move-result-object p1

    return-object p1
.end method
