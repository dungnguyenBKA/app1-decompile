.class final synthetic Lw50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/h;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lx50$a;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lx50$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw50;->a:Ljava/lang/String;

    iput-object p2, p0, Lw50;->b:Lx50$a;

    return-void
.end method

.method public static b(Ljava/lang/String;Lx50$a;)Lcom/google/firebase/components/h;
    .locals 1

    new-instance v0, Lw50;

    invoke-direct {v0, p0, p1}, Lw50;-><init>(Ljava/lang/String;Lx50$a;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/firebase/components/e;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lw50;->a:Ljava/lang/String;

    iget-object v1, p0, Lw50;->b:Lx50$a;

    .line 1
    const-class v2, Landroid/content/Context;

    invoke-interface {p1, v2}, Lcom/google/firebase/components/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-interface {v1, p1}, Lx50$a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v1, Lr50;

    invoke-direct {v1, v0, p1}, Lr50;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
