.class public final Lcom/google/firebase/analytics/connector/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lvy$b;

.field private final c:Lcw;

.field private final d:Lcom/google/firebase/analytics/connector/internal/c;


# direct methods
.method public constructor <init>(Lcw;Lvy$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/analytics/connector/internal/d;->b:Lvy$b;

    iput-object p1, p0, Lcom/google/firebase/analytics/connector/internal/d;->c:Lcw;

    new-instance p2, Lcom/google/firebase/analytics/connector/internal/c;

    .line 1
    invoke-direct {p2, p0}, Lcom/google/firebase/analytics/connector/internal/c;-><init>(Lcom/google/firebase/analytics/connector/internal/d;)V

    iput-object p2, p0, Lcom/google/firebase/analytics/connector/internal/d;->d:Lcom/google/firebase/analytics/connector/internal/c;

    .line 2
    invoke-virtual {p1, p2}, Lcw;->p(Lcw$a;)V

    new-instance p1, Ljava/util/HashSet;

    .line 3
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/analytics/connector/internal/d;->a:Ljava/util/Set;

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/analytics/connector/internal/d;)Lvy$b;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/analytics/connector/internal/d;->b:Lvy$b;

    return-object p0
.end method
