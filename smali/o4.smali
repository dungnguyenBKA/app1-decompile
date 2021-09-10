.class public final Lo4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li4$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Li4$b;)Li4;
    .locals 3

    .line 1
    new-instance v0, Ln4;

    iget-object v1, p1, Li4$b;->a:Landroid/content/Context;

    iget-object v2, p1, Li4$b;->b:Ljava/lang/String;

    iget-object p1, p1, Li4$b;->c:Li4$a;

    invoke-direct {v0, v1, v2, p1}, Ln4;-><init>(Landroid/content/Context;Ljava/lang/String;Li4$a;)V

    return-object v0
.end method
