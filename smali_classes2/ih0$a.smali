.class Lih0$a;
.super Lvj0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lih0;-><init>(Lgh0;Ljh0;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic k:Lih0;


# direct methods
.method constructor <init>(Lih0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lih0$a;->k:Lih0;

    invoke-direct {p0}, Lvj0;-><init>()V

    return-void
.end method


# virtual methods
.method protected n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lih0$a;->k:Lih0;

    .line 2
    iget-object v0, v0, Lih0;->c:Lmi0;

    invoke-virtual {v0}, Lmi0;->a()V

    return-void
.end method
