.class public final Lcom/google/firebase/analytics/connector/internal/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lvy$b;

.field private final b:Lcw;

.field private final c:Lcom/google/firebase/analytics/connector/internal/e;


# direct methods
.method public constructor <init>(Lcw;Lvy$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/analytics/connector/internal/f;->a:Lvy$b;

    iput-object p1, p0, Lcom/google/firebase/analytics/connector/internal/f;->b:Lcw;

    new-instance p2, Lcom/google/firebase/analytics/connector/internal/e;

    .line 1
    invoke-direct {p2, p0}, Lcom/google/firebase/analytics/connector/internal/e;-><init>(Lcom/google/firebase/analytics/connector/internal/f;)V

    iput-object p2, p0, Lcom/google/firebase/analytics/connector/internal/f;->c:Lcom/google/firebase/analytics/connector/internal/e;

    .line 2
    invoke-virtual {p1, p2}, Lcw;->p(Lcw$a;)V

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/analytics/connector/internal/f;)Lvy$b;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/analytics/connector/internal/f;->a:Lvy$b;

    return-object p0
.end method
