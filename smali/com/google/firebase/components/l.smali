.class final synthetic Lcom/google/firebase/components/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/firebase/components/x;

.field private final c:Ld50;


# direct methods
.method private constructor <init>(Lcom/google/firebase/components/x;Ld50;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/l;->b:Lcom/google/firebase/components/x;

    iput-object p2, p0, Lcom/google/firebase/components/l;->c:Ld50;

    return-void
.end method

.method public static a(Lcom/google/firebase/components/x;Ld50;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/firebase/components/l;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/components/l;-><init>(Lcom/google/firebase/components/x;Ld50;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/components/l;->b:Lcom/google/firebase/components/x;

    iget-object v1, p0, Lcom/google/firebase/components/l;->c:Ld50;

    .line 1
    sget v2, Lcom/google/firebase/components/n;->h:I

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/firebase/components/x;->a(Ld50;)V

    return-void
.end method
