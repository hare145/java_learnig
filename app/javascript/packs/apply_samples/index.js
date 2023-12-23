<script>  $(document).ready(function() {
    $("#tabs").railsSortable({
      update: function(event, ui) {
        var tabId = ui.item.data("id");
        var position = ui.item.index() + 1;

        $.ajax({
          type: "PATCH",
          url: "/tabs/" + tabId,
          data: { position: position },
        });
      },
    });
  });
