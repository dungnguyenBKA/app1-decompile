.class final synthetic Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llv$a;


# instance fields
.field private final a:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;

.field private final b:Lit;

.field private final c:I


# direct methods
.method private constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;Lit;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;->a:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;

    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;->b:Lit;

    iput p3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;->c:I

    return-void
.end method

.method public static a(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;Lit;I)Llv$a;
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;-><init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;Lit;I)V

    return-object v0
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;->a:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;->b:Lit;

    iget v2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;->c:I

    invoke-static {v0, v1, v2}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;->c(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;Lit;I)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method
