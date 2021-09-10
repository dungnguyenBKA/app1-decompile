.class Lj70$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw70;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj70;->a(Lz80;)Lw70;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw70<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ll60;

.field final synthetic b:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lj70;Ll60;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lj70$a;->a:Ll60;

    iput-object p3, p0, Lj70$a;->b:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lj70$a;->a:Ll60;

    iget-object v1, p0, Lj70$a;->b:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Ll60;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
