.class final synthetic La10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldw;


# instance fields
.field private final a:Lc10;


# direct methods
.method private constructor <init>(Lc10;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La10;->a:Lc10;

    return-void
.end method

.method public static a(Lc10;)Ldw;
    .locals 1

    new-instance v0, La10;

    invoke-direct {v0, p0}, La10;-><init>(Lc10;)V

    return-object v0
.end method


# virtual methods
.method public then(Lkw;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, La10;->a:Lc10;

    invoke-static {v0, p1}, Lc10;->a(Lc10;Lkw;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
