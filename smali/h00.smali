.class final synthetic Lh00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljz;


# instance fields
.field private final a:Li00;


# direct methods
.method private constructor <init>(Li00;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh00;->a:Li00;

    return-void
.end method

.method public static b(Li00;)Ljz;
    .locals 1

    new-instance v0, Lh00;

    invoke-direct {v0, p0}, Lh00;-><init>(Li00;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lh00;->a:Li00;

    invoke-virtual {v0, p1}, Li00;->m(Ljava/lang/String;)V

    return-void
.end method
