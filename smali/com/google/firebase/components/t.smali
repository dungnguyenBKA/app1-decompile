.class final synthetic Lcom/google/firebase/components/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Ljava/util/Map$Entry;

.field private final c:Lr40;


# direct methods
.method private constructor <init>(Ljava/util/Map$Entry;Lr40;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/t;->b:Ljava/util/Map$Entry;

    iput-object p2, p0, Lcom/google/firebase/components/t;->c:Lr40;

    return-void
.end method

.method public static a(Ljava/util/Map$Entry;Lr40;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/firebase/components/t;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/components/t;-><init>(Ljava/util/Map$Entry;Lr40;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/components/t;->b:Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/google/firebase/components/t;->c:Lr40;

    .line 1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls40;

    invoke-interface {v0, v1}, Ls40;->a(Lr40;)V

    return-void
.end method
